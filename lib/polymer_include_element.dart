/**
 * Created by lejard_h on 08/10/15.
 */

@HtmlImport("polymer_include_element.html")
library polymer_include_element;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'polymer_include_element_behavior.dart';

@PolymerRegister('polymer-include-element')
class PolymerIncludeElement extends PolymerElement with PolymerIncludeElementBehavior {
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
}