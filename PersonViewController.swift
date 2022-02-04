class PersonViewController: UIViewController {
  var personPresenter: PersonPresenter

  override func ViewDidLoad() {
    personPresenter = PersonPresenter(viewModelObserver: ViewModelObserver<PersonViewModel>())
    personPresenter?.getViewModelObserver().observe = { viewmodel in
      self.render(viewModel: ViewModel)
    }
    personPresenter?.onViewDidLoad()
  }

  func render(viewModel: PersonViewModel) {
    if(viewmodel.viewmodelState == .loaded) {
      //update UI for loaded state
    }
  }
}
