#!/bin/bash
#
# Copyright 2015-2017 Adrian DC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Usage: run_cleanrambuild.sh (Build RAM processes cleanup)

# Show available RAM
free;
echo '';

# Kill relevant RAM eating processes
killall ckati;
killall java;
killall ninja;

# Show available RAM
echo '';
free;
