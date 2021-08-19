import UIKit
import SnapKit

class SwipingController: UICollectionViewController {
    
    private lazy var headerView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray
        self.view.addSubview(view)
        return view
    }()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .green
        
        setupHeader()
    }
}

// MARK: - Private Methods:
private extension SwipingController {
    
    func setupHeader() {
        headerView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.top.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(50)
        }
    }
}
