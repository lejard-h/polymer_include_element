/**
 * Created by lejard_h on 18/10/15.
 */

library polymer_include_element.behavior;

import 'dart:html';
import 'package:polymer/polymer.dart';

@behavior
abstract class PolymerIncludeElementBehavior {

    HtmlElement get rootElement => Polymer.dom(this.root);

    include(elem, [HtmlElement parent = null]) {
        if (parent == null) {
            parent = rootElement;
        }
        removeChildren(parent);
        if (parent != null) {
            if (elem is HtmlElement) {
                parent.append(elem);
            } else if (elem is String) {
                parent.append(document.createElement(elem));
            }
        }
    }

    removeChildren([HtmlElement parent]) {
        if (parent == null) {
            parent = rootElement;
        }
        parent.children.clear();
    }

}