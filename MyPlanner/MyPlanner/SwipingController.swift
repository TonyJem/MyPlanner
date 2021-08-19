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
        collectionView.register(PageCell.self, forCellWithReuseIdentifier: "cellId")
        
        setupHeader()
        setupFooter()
    }
    
}

// MARK: - CollectionView's Data Source
extension SwipingController {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 88
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! PageCell
        return cell
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
