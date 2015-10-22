class AccountDSL(value: Account) {

    import scala.collection.JavaConversions._
    def names = value.getNames.toSeq.toList ::: List(value.getFirstName)

    def belongsTo(name: String) = {
        (name == value.getFirstName) || (names exists(_ == name))
    }

    def <<(name: String) = {
        value.addName(name)
        this
    }
}
