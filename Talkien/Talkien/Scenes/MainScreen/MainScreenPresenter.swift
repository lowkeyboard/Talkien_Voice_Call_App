

final class MainScreenPresenter: MainScreenPresenterProtocol {
    func getMicPermission() {
        interactor.giveMicPermission()
    }
    
    
    
    
    private unowned let view: MainScreenViewProtocol
    private let interactor: MainScreenInteractorProtocol
    private let router: MainScreenRouterProtocol
    
    
    init(view: MainScreenViewProtocol,
         interactor: MainScreenInteractorProtocol,
         router: MainScreenRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
        
        
        self.interactor.delegate = self
    }
    
    
    func routeToCallScreen() {
//        interactor.selectMovie(at: index)
        router.navigate(to: .detail)
        
    }
    
    func getVideoPermission() {
        interactor.getVideoPermission()
    }
    
    
    
    
}

extension MainScreenPresenter: MainScreenInteractorDelegate {
//
//    func handleOutput(_ output: MainScreenInteractorOutput) {
//        switch output {
//        case .setLoading(let isLoading):
//            view.handleOutput(.setLoading(isLoading))
//    }
//}
}
