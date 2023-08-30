import UIKit
import Turbo

final class ViewController: VisitableViewController, ErrorPresenter {
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.backButtonDisplayMode = .minimal
        view.backgroundColor = .systemBackground

        if presentingViewController != nil {
            navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .stop, target: self, action: #selector(dismissModal))
        }
    }

    @objc func dismissModal() {
        dismiss(animated: true)
    }
}
