// Variables
var expand_documentation = false;

// Function: Anchor links creations
function anchorizejekyll()
{
  'use strict';

  var headingNodes = [];
  var results;
  var link;
  var tags = ['h2', 'h3', 'h4', 'h5', 'h6'];

  tags.forEach(function(tag){
    results = document.getElementsByTagName(tag);
    Array.prototype.push.apply(headingNodes, results);
  });

  headingNodes.forEach(function(node){
    link = document.createElement('a');
    link.innerHTML = '&nbsp;&infin;';
    link.href = '#' + node.getAttribute('id');
    link.style.visibility = "hidden";
    node.className = 'anchor-item';
    node.appendChild(link);
  });

}

// Function: Toggle all documentation details
function toggle_documentation(button)
{
  var details = document.querySelectorAll('details');
  expand_documentation = !expand_documentation;

  Array.from(details).forEach(function(obj, idx) {
    obj.open = expand_documentation;
  });
}

// Function: Expands details wrapping an anchor
function anchor_expands(id)
{
  // Find element by tag
  var title = document.getElementById(id);
  if (title) {

    // Find related details
    var details = title.closest("details");
    if (details) {

      // Expand related details
      details.open = true;
    }
  }
}

// Page loaded event
window.onload = function()
{
  // Start anchor links creations
  anchorizejekyll();

  // Acquire anchor tag
  var anchor_tag = window.location.hash.substr(1);

  // Apply anchor expands
  if (anchor_tag && anchor_tag.length !== 0) {
    anchor_expands(anchor_tag);
  }
}
