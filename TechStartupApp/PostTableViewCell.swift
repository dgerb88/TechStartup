//
//  PostTableViewCell.swift
//  TechStartupApp
//
//  Created by Dax Gerber on 11/1/23.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var commentsLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

    func update(with post: Post) {
        userLabel.text = post.user
        titleLabel.text = post.title
        commentsLabel.text = post.comments.joined(separator: "\n-----------------------------------------------\n")
        bodyLabel.text = post.bodyText
        dateLabel.text = post.date.formatted(date: .abbreviated, time: .omitted)
    }
    
    
}
