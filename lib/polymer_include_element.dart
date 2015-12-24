/**
 * Created by lejard_h on 08/10/15.
 */

@HtmlImport("polymer_include_element.html")
library polymer_include_element;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'polymer_include_element_behavior.dart';
import 'dart:html';

@PolymerRegister('polymer-include-element')
class PolymerIncludeElement extends PolymerElement with PolymerIncludeElementBehavior {
    PolymerIncludeElement.created() : super.created();

    PolymerDom get rootElement => Polymer.dom(this.root);

    var _element;

    @property
    get element => _element;

    @reflectable
    set element(value) {
        _element = value;
        print(value);
        include(value, rootElement);
        notifyPath('element', _element);
    }
}