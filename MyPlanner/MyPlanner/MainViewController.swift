import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    private let headerView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    private let footerView: UIView = {
        let view = UIView()
        view.backgroundColor = .purple
        return view
    }()
    
    private let swipeView: UICollectionView = {
        let view = SwipeView()
        view.backgroundColor = .yellow
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        
        view.addSubview(headerView)
        setupHeader()
        
        view.addSubview(footerView)
        setupFooter()
        
        view.addSubview(swipeView)
        setupSwipeView()
    }
}

// MARK: - Private Methods:
private extension MainViewController {
    
    func setupHeader() {
        headerView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.top.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(100)
        }
    }
    
    func setupFooter() {
        footerView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.bottom.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(100)
        }
    }
    
    func setupSwipeView() {
        swipeView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.top.equalTo(headerView.snp.bottom).offset(10)
            make.trailing.equalToSuperview()
            make.bottom.equalTo(footerView.snp.top).offset(-10)
        }
    }
}
