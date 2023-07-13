import UIKit
import SDWebImage

class DetailsMovieViewController: UIViewController {
    
    //IBOutlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    //View Model
    var viewModel: DetailsMovieViewModel
    
    init(viewModel: DetailsMovieViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "DetailsMovieViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
    }
    
    private func configView() {
        self.title = "Movie Detail"
        self.titleLabel.text = viewModel.movieTitle
        self.descriptionLabel.text = viewModel.movieDescription
        self.imageView.sd_setImage(with: viewModel.movieImage)
    }
}
