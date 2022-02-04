class PersonPresenter {
  var viewModelObserver: ViewModelObserver<PersonViewModel>

  init(viewModelObserver: ViewModelObserver<PersonViewModel>) {
    self.viewModelObserver = viewModelObserver
  }

  func onViewDidLoad() {
    var ViewModel = PersonViewModel()
    viewModel.viewModelState = .loaded
    viewModel.title = "Some title"
    viewModelObserver.value = viewModel
  }

  func getViewModelObserver() -> ViewModelObserver<PersonViewModel> {
    viewModelObserver
  }
}
