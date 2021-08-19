import UIKit
import SnapKit

class SwipingController: UICollectionViewController {
    
    private lazy var headerView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray
        self.view.addSubview(view)
        return view
    }()
    
    private lazy var footerView: UIView = {
        let view = UIView()
        view.backgroundColor = .purple
        self.view.addSubview(view)
        return view
    }()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .green
        
        setupHeader()
        setupFooter()
    }
}

// MARK: - Private Methods:
private extension SwipingController {
    
    func setupHeader() {
        headerView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.top.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(70)
        }
    }
    
    func setupFooter() {
        footerView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.bottom.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(70)
        }
    }
}
