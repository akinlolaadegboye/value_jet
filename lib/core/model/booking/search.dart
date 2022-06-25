/// search-input : "a"

class Search {
  String _searchInput;

  String get searchInput => _searchInput;

  Search({
      String searchInput}){
    _searchInput=searchInput;
}

  Search.fromJson(dynamic json) {
    _searchInput = json["search-input"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["search-input"] =_searchInput;
    return map;
  }

}