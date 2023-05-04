class SelectionModel {
  final String title;
  final bool active;

  SelectionModel(this.title, this.active);
}

List<SelectionModel> productSelectionTab = [
  SelectionModel('About Item', true),
  SelectionModel('Reviews', false)

];
