class ViewModelObserver<T: Equtable> {
  private let thread: DispatchQueue
  var value: T? {
    willSet(newValue) {
      if let newValue = newValue, value != newValue {
        thread.async {
          self.observe?(newValue)
        }
      }
    }
  }

  var observe: ((T) -> Void)?
  init(_ value: T = nil, thread dispatcherThread: DispatchQueue = DispatchQueue.main) {
    self.thread = dispatcherThread
    self.value = value
  }
}
