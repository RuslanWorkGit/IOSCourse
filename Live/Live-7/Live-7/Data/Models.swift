// MARK: - WelcomeElement
struct Person: Codable {
    
    let firstName: String
    let lastName: String
    let differentSizeDescription: String
    let avatarImage: String
    let contacts: Contacts
    let job: Job
    let location: Location

    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case differentSizeDescription, avatarImage, contacts
        case job
        case location
    }
}

// MARK: - Contacts
struct Contacts: Codable {
    let email, mobile: String
}

// MARK: - Job
struct Job: Codable {
    let company, department: String
    let phoneNumbers: [String]
    let position: String

    enum CodingKeys: String, CodingKey {
        case company, department
        case phoneNumbers = "phone_numbers"
        case position
    }
}

// MARK: - Location
struct Location: Codable {
    let city, country, state, street: String
}

typealias Persons = [Person]
