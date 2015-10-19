/**
 * Created by lejard_h on 18/10/15.
 */

library polymer_include_element.behavior;

import 'dart:html';
import 'package:polymer/polymer.dart';

@behavior
abstract class PolymerIncludeElementBehavior {

  include(elem, PolymerDom parent) {
    removeChildren(parent);

    if (parent != null) {
      if (elem is HtmlElement) {
        parent.append(elem);
      } else if (elem is String) {
        HtmlElement _elem = document.createElement(elem);
        parent.append(_elem);
      }
      PolymerDom.flush();
    }
  }

  removeChildren(PolymerDom parent) {
    parent.children.clear();
  }

}