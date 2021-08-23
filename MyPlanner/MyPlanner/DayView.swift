import UIKit

class DayView: UIView {
    
    private let weekDayLabel: UILabel = {
        let label = UILabel()
        label.text = "Saturday"
        return label
    }()
    
    private let dateLabel: UILabel = {
        let label = UILabel()
        label.text = "14"
        return label
    }()
    
    private let descritpionLabel: UILabel = {
        let label = UILabel()
        label.text = "226TH DAY, 139 LEFT, WEEK 32"
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
        
    }
}
