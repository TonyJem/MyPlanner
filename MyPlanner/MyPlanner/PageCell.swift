import UIKit
import SnapKit

class PageCell: UICollectionViewCell {
    
    private let calendarContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemPink
        return view
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(calendarContainerView)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /*
     make.width.equalToSuperview().multipliedBy(0.45) // 1
     */
    
    private func setupLayout() {
        calendarContainerView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.top.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.5)
            make.height.equalTo(200)
        }
    }
    
}
