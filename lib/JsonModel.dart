// // To parse this JSON data, do
// //
// //     final userModel = userModelFromJson(jsonString);
//
// import 'dart:convert';
//
// JsonModel jsonModelFromJson(String str) => JsonModel.fromJson(json.decode(str));
//
//
//
// String jsonModelToJson(JsonModel data) => json.encode(data.toJson());
//
// class JsonModel {
//   JsonModel({
//     this.models,
//     this.selectedModelIndex,
//     this.selectedElementId,
//   });
//
//   List<Model>? models;
//   int? selectedModelIndex;
//   String? selectedElementId;
//
//   factory JsonModel.fromJson(Map<String, dynamic> json) => JsonModel(
//     models: List<Model>.from(json["models"].map((x) => Model.fromJson(x))),
//     selectedModelIndex: json["selectedModelIndex"],
//     selectedElementId: json["selectedElementId"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "models": List<dynamic>.from(models.map((x) => x.toJson())),
//     "selectedModelIndex": selectedModelIndex,
//     "selectedElementId": selectedElementId,
//   };
// }
//
// class Model {
//   Model({
//     this.edges,
//     this.generator,
//     this.id,
//     this.name,
//     this.startElementId,
//     this.vertices,
//     this.editor,
//   });
//
//   List<ModelEdge>? edges;
//   String? generator;
//   String? id;
//   String? name;
//   String? startElementId;
//   List<Vertex>? vertices;
//   Editor? editor;
//
//   factory Model.fromJson(Map<String, dynamic> json) => Model(
//     edges: List<ModelEdge>.from(json["edges"].map((x) => ModelEdge.fromJson(x))),
//     generator: json["generator"],
//     id: json["id"],
//     name: json["name"],
//     startElementId: json["startElementId"],
//     vertices: List<Vertex>.from(json["vertices"].map((x) => Vertex.fromJson(x))),
//     editor: Editor.fromJson(json["editor"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "edges": List<dynamic>.from(edges.map((x) => x.toJson())),
//     "generator": generator,
//     "id": id,
//     "name": name,
//     "startElementId": startElementId,
//     "vertices": List<dynamic>.from(vertices.map((x) => x.toJson())),
//     "editor": editor.toJson(),
//   };
// }
//
// class ModelEdge {
//   ModelEdge({
//     this.id,
//     this.name,
//     this.sourceVertexId,
//     this.targetVertexId,
//   });
//
//   String? id;
//   String? name;
//   String? sourceVertexId;
//   String? targetVertexId;
//
//   factory ModelEdge.fromJson(Map<String, dynamic> json) => ModelEdge(
//     id: json["id"],
//     name: json["name"],
//     sourceVertexId: json["sourceVertexId"],
//     targetVertexId: json["targetVertexId"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//     "sourceVertexId": sourceVertexId,
//     "targetVertexId": targetVertexId,
//   };
// }
//
// class Editor {
//   Editor({
//     this.elements,
//     this.style,
//     this.data,
//     this.zoomingEnabled,
//     this.userZoomingEnabled,
//     this.zoom,
//     this.minZoom,
//     this.maxZoom,
//     this.panningEnabled,
//     this.userPanningEnabled,
//     this.pan,
//     this.boxSelectionEnabled,
//     this.renderer,
//   });
//
//   Elements? elements;
//   List<StyleElement>? style;
//   EditorData? data;
//   bool? zoomingEnabled;
//   bool? userZoomingEnabled;
//   int? zoom;
//   double? minZoom;
//   double? maxZoom;
//   bool? panningEnabled;
//   bool? userPanningEnabled;
//   Pan? pan;
//   bool? boxSelectionEnabled;
//   Renderer? renderer;
//
//   factory Editor.fromJson(Map<String, dynamic> json) => Editor(
//     elements: Elements.fromJson(json["elements"]),
//     style: List<StyleElement>.from(json["style"].map((x) => StyleElement.fromJson(x))),
//     data: EditorData.fromJson(json["data"]),
//     zoomingEnabled: json["zoomingEnabled"],
//     userZoomingEnabled: json["userZoomingEnabled"],
//     zoom: json["zoom"],
//     minZoom: json["minZoom"].toDouble(),
//     maxZoom: json["maxZoom"].toDouble(),
//     panningEnabled: json["panningEnabled"],
//     userPanningEnabled: json["userPanningEnabled"],
//     pan: Pan.fromJson(json["pan"]),
//     boxSelectionEnabled: json["boxSelectionEnabled"],
//     renderer: Renderer.fromJson(json["renderer"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "elements": elements?.toJson(),
//     "style": List<dynamic>.from(style.map((x) => x?.toJson())),
//     "data": data?.toJson(),
//     "zoomingEnabled": zoomingEnabled,
//     "userZoomingEnabled": userZoomingEnabled,
//     "zoom": zoom,
//     "minZoom": minZoom,
//     "maxZoom": maxZoom,
//     "panningEnabled": panningEnabled,
//     "userPanningEnabled": userPanningEnabled,
//     "pan": pan?.toJson(),
//     "boxSelectionEnabled": boxSelectionEnabled,
//     "renderer": renderer?.toJson(),
//   };
// }
//
// class EditorData {
//   EditorData();
//
//   factory EditorData.fromJson(Map<String, dynamic> json) => EditorData(
//   );
//
//   Map<String, dynamic> toJson() => {
//   };
// }
//
// class Elements {
//   Elements({
//     this.nodes,
//     this.edges,
//   });
//
//   List<Node> nodes;
//   List<ElementsEdge> edges;
//
//   factory Elements.fromJson(Map<String, dynamic> json) => Elements(
//     nodes: List<Node>.from(json["nodes"].map((x) => Node.fromJson(x))),
//     edges: List<ElementsEdge>.from(json["edges"].map((x) => ElementsEdge.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "nodes": List<dynamic>.from(nodes.map((x) => x.toJson())),
//     "edges": List<dynamic>.from(edges.map((x) => x.toJson())),
//   };
// }
//
// class ElementsEdge {
//   ElementsEdge({
//     this.data,
//     this.position,
//     this.group,
//     this.removed,
//     this.selected,
//     this.selectable,
//     this.locked,
//     this.grabbable,
//     this.pannable,
//     this.classes,
//   });
//
//   EdgeData? data;
//   Pan? position;
//   String? group;
//   bool? removed;
//   bool? selected;
//   bool? selectable;
//   bool? locked;
//   bool? grabbable;
//   bool? pannable;
//   String? classes;
//
//   factory ElementsEdge.fromJson(Map<String, dynamic> json) => ElementsEdge(
//     data: EdgeData.fromJson(json["data"]),
//     position: Pan.fromJson(json["position"]),
//     group: json["group"],
//     removed: json["removed"],
//     selected: json["selected"],
//     selectable: json["selectable"],
//     locked: json["locked"],
//     grabbable: json["grabbable"],
//     pannable: json["pannable"],
//     classes: json["classes"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "data": data?.toJson(),
//     "position": position?.toJson(),
//     "group": group,
//     "removed": removed,
//     "selected": selected,
//     "selectable": selectable,
//     "locked": locked,
//     "grabbable": grabbable,
//     "pannable": pannable,
//     "classes": classes,
//   };
// }
//
// class EdgeData {
//   EdgeData({
//     this.id,
//     this.name,
//     this.source,
//     this.target,
//     this.color,
//   });
//
//   String? id;
//   String? name;
//   String? source;
//   String? target;
//   String? color;
//
//   factory EdgeData.fromJson(Map<String, dynamic> json) => EdgeData(
//     id: json["id"],
//     name: json["name"],
//     source: json["source"],
//     target: json["target"],
//     color: json["color"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//     "source": source,
//     "target": target,
//     "color": color,
//   };
// }
//
// class Pan {
//   Pan({
//     this.x,
//     this.y,
//   });
//
//   int? x;
//   int? y;
//
//   factory Pan.fromJson(Map<String, dynamic> json) => Pan(
//     x: json["x"],
//     y: json["y"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "x": x,
//     "y": y,
//   };
// }
//
// class Node {
//   Node({
//     this.data,
//     this.position,
//     this.group,
//     this.removed,
//     this.selected,
//     this.selectable,
//     this.locked,
//     this.grabbable,
//     this.pannable,
//     this.classes,
//   });
//
//   NodeData? data;
//   Pan? position;
//   String? group;
//   bool? removed;
//   bool? selected;
//   bool? selectable;
//   bool? locked;
//   bool? grabbable;
//   bool? pannable;
//   String? classes;
//
//   factory Node.fromJson(Map<String, dynamic> json) => Node(
//     data: NodeData.fromJson(json["data"]),
//     position: Pan.fromJson(json["position"]),
//     group: json["group"],
//     removed: json["removed"],
//     selected: json["selected"],
//     selectable: json["selectable"],
//     locked: json["locked"],
//     grabbable: json["grabbable"],
//     pannable: json["pannable"],
//     classes: json["classes"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "data": data?.toJson(),
//     "position": position?.toJson()?,
//     "group": group,
//     "removed": removed,
//     "selected": selected,
//     "selectable": selectable,
//     "locked": locked,
//     "grabbable": grabbable,
//     "pannable": pannable,
//     "classes": classes,
//   };
// }
//
// class NodeData {
//   NodeData({
//     this.id,
//     this.name,
//     this.color,
//   });
//
//   String? id;
//   String? name;
//   String? color;
//
//   factory NodeData.fromJson(Map<String, dynamic> json) => NodeData(
//     id: json["id"],
//     name: json["name"],
//     color: json["color"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//     "color": color,
//   };
// }
//
// class Renderer {
//   Renderer({
//     this.name,
//   });
//
//   String? name;
//
//   factory Renderer.fromJson(Map<String, dynamic> json) => Renderer(
//     name: json["name"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "name": name,
//   };
// }
//
// class StyleElement {
//   StyleElement({
//     this.selector,
//     this.style,
//   });
//
//   String? selector;
//   StyleStyle? style;
//
//   factory StyleElement.fromJson(Map<String, dynamic> json) => StyleElement(
//     selector: json["selector"],
//     style: StyleStyle.fromJson(json["style"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "selector": selector,
//     "style": style?.toJson(),
//   };
// }
//
// class StyleStyle {
//   StyleStyle({
//     this.activeBgSize,
//     this.label,
//     this.textWrap,
//     this.textValign,
//     this.textHalign,
//     this.shape,
//     this.width,
//     this.height,
//     this.color,
//     this.backgroundColor,
//     this.lineColor,
//     this.padding,
//     this.curveStyle,
//     this.textRotation,
//     this.targetArrowShape,
//     this.targetArrowColor,
//     this.controlPointStepSize,
//     this.borderWidth,
//     this.borderColor,
//   });
//
//   String? activeBgSize;
//   String? label;
//   String? textWrap;
//   String? textValign;
//   String? textHalign;
//   String? shape;
//   String? width;
//   String? height;
//   String? color;
//   String? backgroundColor;
//   String? lineColor;
//   String? padding;
//   String? curveStyle;
//   String? textRotation;
//   String? targetArrowShape;
//   String? targetArrowColor;
//   String? controlPointStepSize;
//   String? borderWidth;
//   String? borderColor;
//
//   factory StyleStyle.fromJson(Map<String, dynamic> json) => StyleStyle(
//     activeBgSize: json["active-bg-size"] == null ? null : json["active-bg-size"],
//     label: json["label"] == null ? null : json["label"],
//     textWrap: json["text-wrap"] == null ? null : json["text-wrap"],
//     textValign: json["text-valign"] == null ? null : json["text-valign"],
//     textHalign: json["text-halign"] == null ? null : json["text-halign"],
//     shape: json["shape"] == null ? null : json["shape"],
//     width: json["width"] == null ? null : json["width"],
//     height: json["height"] == null ? null : json["height"],
//     color: json["color"] == null ? null : json["color"],
//     backgroundColor: json["background-color"] == null ? null : json["background-color"],
//     lineColor: json["line-color"] == null ? null : json["line-color"],
//     padding: json["padding"] == null ? null : json["padding"],
//     curveStyle: json["curve-style"] == null ? null : json["curve-style"],
//     textRotation: json["text-rotation"] == null ? null : json["text-rotation"],
//     targetArrowShape: json["target-arrow-shape"] == null ? null : json["target-arrow-shape"],
//     targetArrowColor: json["target-arrow-color"] == null ? null : json["target-arrow-color"],
//     controlPointStepSize: json["control-point-step-size"] == null ? null : json["control-point-step-size"],
//     borderWidth: json["border-width"] == null ? null : json["border-width"],
//     borderColor: json["border-color"] == null ? null : json["border-color"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "active-bg-size": activeBgSize == null ? null : activeBgSize,
//     "label": label == null ? null : label,
//     "text-wrap": textWrap == null ? null : textWrap,
//     "text-valign": textValign == null ? null : textValign,
//     "text-halign": textHalign == null ? null : textHalign,
//     "shape": shape == null ? null : shape,
//     "width": width == null ? null : width,
//     "height": height == null ? null : height,
//     "color": color == null ? null : color,
//     "background-color": backgroundColor == null ? null : backgroundColor,
//     "line-color": lineColor == null ? null : lineColor,
//     "padding": padding == null ? null : padding,
//     "curve-style": curveStyle == null ? null : curveStyle,
//     "text-rotation": textRotation == null ? null : textRotation,
//     "target-arrow-shape": targetArrowShape == null ? null : targetArrowShape,
//     "target-arrow-color": targetArrowColor == null ? null : targetArrowColor,
//     "control-point-step-size": controlPointStepSize == null ? null : controlPointStepSize,
//     "border-width": borderWidth == null ? null : borderWidth,
//     "border-color": borderColor == null ? null : borderColor,
//   };
// }
//
// class Vertex {
//   Vertex({
//     this.id,
//     this.name,
//     this.properties,
//   });
//
//   String? id;
//   String? name;
//   Pan? properties;
//
//   factory Vertex.fromJson(Map<String, dynamic> json) => Vertex(
//     id: json["id"],
//     name: json["name"],
//     properties: Pan.fromJson(json["properties"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//     "properties": properties?.toJson(),
//   };
// }