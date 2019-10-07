import Danger
import Foundation

let danger = Danger()

let editedFiles = danger.git.modifiedFiles + danger.git.createdFiles
message("These files have changed: \n\(editedFiles.joined(separator: ",\n"))")

let body = danger.github.pullRequest.body ?? ""
message(body)

if !body.contains("http://jira-lab.sit.kkday.com/browse/MEMAPP-") {
    fail("You should remember to add jira link!")
}

warn("Just a test warning.")
