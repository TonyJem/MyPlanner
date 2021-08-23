import UIKit
import SnapKit

class DayView: UIView {
    
    private let weekDayLabel: UILabel = {
        let label = UILabel()
        
        label.backgroundColor = UIColor.clear //TODO: set a light color to see the frame
        label.textAlignment = .center
        label.font = UIFont(name: "Helvetica Neue Thin", size: 26)
        label.textColor = .systemGray
        label.text = "Saturday"

        return label
    }()
    
    private let dateLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = UIColor.clear //TODO: set a light color to see the frame
        label.textAlignment = .center
        label.font = UIFont(name: "Helvetica Neue UltraLight", size: 115)
        label.textColor = .systemOrange
        label.text = "14"
        return label
    }()
    
    private let descritpionLabel: UILabel = {
        let label = UILabel()
        label.text = "226TH DAY, 139 LEFT, WEEK 32"
        label.textAlignment = .center
        return label
    }()
    
    
    // MARK: - init
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: - Setup Layout
private extension DayView {
    
    func setupLayout() {
        addSubview(weekDayLabel)
        weekDayLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.top.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(50)
        }
        
        addSubview(dateLabel)
        dateLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(self.snp.centerY).offset(-15)
            make.width.equalTo(200)
            make.height.equalTo(130)
        }
        
        addSubview(descritpionLabel)
        descritpionLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.bottom.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(50)
        }
    }
}
