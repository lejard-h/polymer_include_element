/**
 * Created by lejard_h on 08/10/15.
 */

@HtmlImport("polymer_include_element.html")
library polymer_include_element;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;

@PolymerRegister('polymer-include-element')
class PolymerIncludeElement extends PolymerElement {
    PolymerIncludeElement.created() : super.created();

    var _element;

    @property
    get element => _element;

    @reflectable
    set element(value) {
        _element = value;
        include(value);
        notifyPath('element', _element);
    }

    HtmlElement get rootElement => Polymer.dom(this.root);

    include(elem) {
        rootElement.children.clear();
        if (rootElement != null) {
            if (elem is HtmlElement) {
                rootElement.append(elem);
            } else if (element is String) {
                rootElement.append(document.createElement(elem));
            }
        }
    }
}