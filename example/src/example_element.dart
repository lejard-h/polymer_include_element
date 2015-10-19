/**
 * Created by lejard_h on 09/10/15.
 */

@HtmlImport("example_element.html")
library polymer_include_element.example.element;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;

@PolymerRegister('example-element')
class ExampleElement extends PolymerElement {
  ExampleElement.created() : super.created();

  HtmlElement element;

  ready() {
    /*element = new SpanElement()
            ..appendText("Span Element included");*/
    element = new IFrameElement()
      ..height = "100%"
      ..width = "100%"
      ..src = "http://www.walletek.fr";
    set('element', element);
    print(element);
  }
}