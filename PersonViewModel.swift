struct PersonViewModel: Equatable {
  var viewModelState: ViewModelState
  var title: String
  var detail: String

  init() {
    viewModelState = .initial
    title = ""
    detail = ""
  }

  static func == (lhs: PersonViewModel, rhs: PersonViewModel) -> Bool {
    if lhs.viewModelState != rhs.viewModelState ||
      lhs.title != rhs.title ||
      lhs.detail != rhs.detail {
        return false
      }
    return true
  }
}
