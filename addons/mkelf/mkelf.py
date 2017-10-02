#!/usr/bin/env python
#
#
# Copyright (c) 2012, Sony Mobile Communications AB
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#    * Redistributions of source code must retain the above copyright
#      notice, this list of conditions and the following disclaimer.
#    * Redistributions in binary form must reproduce the above copyright
#      notice, this list of conditions and the following disclaimer in
#      the documentation and/or other materials provided with the
#      distribution.
#    * Neither the name of Sony Mobile Communications AB nor the names
#      of its contributors may be used to endorse or promote products
#      derived from this software without specific prior written
#      permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
# FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
# COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
# OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
# AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
# OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
# SUCH DAMAGE.
#
#
# DESCRIPTION
#
#   Combine one or more files to a elf file.
#
# SYNOPSIS
#
#   mkelf.py -o elf file@addr[,name] ...
#
#   elf         The path to the output file
#   file        Input file
#   addr        ELF vaddr and paddr of this file
#   name        Can be any of kernel, ramdisk, ipl, cmdline, appsbl, rpm.
#               If not specified, it will be 'kernel'.
#
#   The entry point will be set to the first segment provided unless -e <addr>
#   is provided, which can override this value.
import os
import re
import struct
import sys
from optparse import OptionParser


class Segment(object):
    def __init__(self, name, type, flags):
        self.name = name
        self.type = type
        self.flags = flags
        self.addr = 0
        self.file = ''
        self.offset = 0
        self.size = 0

    def get_phdr(self):
        return struct.pack('<LLLLLLLL',
                           self.type, self.offset, self.addr, self.addr,
                           self.size, self.size, self.flags, 0)

# Elf definitions
PT_NULL = 0
PT_LOAD = 1
PT_NOTE = 4

# SEMC Elf segments
SEGMENTS = [Segment('kernel',  PT_LOAD, 0x00000000),
            Segment('ramdisk', PT_LOAD, 0x80000000),
            Segment('ipl',     PT_LOAD, 0x40000000),
            Segment('cmdline', PT_NOTE, 0x20000000),
            Segment('rpm',     PT_LOAD, 0x01000000),
            Segment('appsbl',  PT_LOAD, 0x02000000)]


def get_segment(name):
    name = name if name else 'kernel'
    return [seg for seg in SEGMENTS if seg.name == name][0]


def fatal(message):
    print >> sys.stderr, "%s: %s" % (os.path.basename(sys.argv[0]), message)
    sys.exit(1)


def find_segments(args):
    segs = []
    for arg in args:
        m = re.match('(.*?)@(0x[0-9a-fA-F]+)?,?(.*?)$', arg)
        if not m:
            fatal("Invalid format of input parameter: " + arg)
        tokens = m.groups()

        try:
            obj = get_segment(tokens[2])
        except:
            fatal("Invalid section name: %s" % tokens[2])

        obj.file = tokens[0]
        if tokens[1]:
            obj.addr = long(tokens[1], 16)
        segs.append(obj)
    return segs


def write_elf_header(elf, entrypoint, phnum):
    elfhdr = {
        'e_ident': '\x7fELF\x01\x01\x01\x61',
        'e_type': 2,
        'e_machine': 40,
        'e_version': 1,
        'e_entry': entrypoint,
        'e_phoff': 52,
        'e_shoff': 0,
        'e_flags': 0,
        'e_ehsize': 52,
        'e_phentsize': 32,
        'e_phnum': phnum,
        'e_shentsize': 0,
        'e_shnum': 0,
        'e_shstrndx': 0,
        }

    elf.write(struct.pack('<8s8xHHLLLLLHHHHHH',
                          elfhdr['e_ident'], elfhdr['e_type'],
                          elfhdr['e_machine'], elfhdr['e_version'],
                          elfhdr['e_entry'], elfhdr['e_phoff'],
                          elfhdr['e_shoff'], elfhdr['e_flags'],
                          elfhdr['e_ehsize'], elfhdr['e_phentsize'],
                          elfhdr['e_phnum'], elfhdr['e_shentsize'],
                          elfhdr['e_shnum'], elfhdr['e_shstrndx']))


def main(args):
    parser = OptionParser("usage: %prog options")
    parser.add_option('-o', dest='outputfile', help="path to the output file")
    parser.add_option('-e', dest='entrypoint', help="entrypoint (optional)")
    (opts, args) = parser.parse_args()

    if not opts.outputfile:
        fatal("Missing -o on command line")
    if len(args) < 1:
        fatal("Missing input files")

    offset = 4096
    segments = find_segments(args)
    for seg in segments:
        size = os.path.getsize(seg.file)
        seg.offset = offset
        seg.size = size
        offset += size

    with open(opts.outputfile, 'wb') as elf:
        entrypoint = segments[0].addr
        if (opts.entrypoint):
            entrypoint = int(opts.entrypoint, 16)

        write_elf_header(elf, entrypoint, len(segments))
        for seg in segments:
            elf.write(seg.get_phdr())

        for seg in segments:
            elf.seek(seg.offset)

            with open(seg.file, 'rb') as f:
                data = f.read()
                elf.write(data)


if __name__ == '__main__':
    main(sys.argv[1:])
