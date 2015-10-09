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

    @Property(notify: true, observer: "include")
    var element;

    HtmlElement get container => $["container"];


    ready() {
        set('element', element);
        _include();
    }

    _include() {
        print(container);
        if (container != null) {
            container.children.clear();
            if (element is HtmlElement) {
                container.append(element);
            } else if (element is String) {
                container.append(document.createElement(element));
            }
        }
    }

    @reflectable
    include(newElement, oldElement) {
        print(newElement);
        _include();
    }
}