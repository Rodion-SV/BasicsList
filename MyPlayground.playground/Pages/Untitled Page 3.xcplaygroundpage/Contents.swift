let jsonString = """
{
 "full_name": "John Appleseed"
}
"""

struct User: Decodable {
let name: String
}
