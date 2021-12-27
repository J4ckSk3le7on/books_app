import 'dart:convert';

class SearchBookModel {
    SearchBookModel({
        required this.numFound,
        required this.start,
        required this.numFoundExact,
        required this.docs,
        required this.searchBookModelNumFound,
        required this.q,
        required this.offset,
    });

    int? numFound;
    int? start;
    bool? numFoundExact;
    List<BookData>? docs;
    int? searchBookModelNumFound;
    String? q;
    dynamic offset;

    factory SearchBookModel.fromRawJson(String str) => SearchBookModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory SearchBookModel.fromJson(Map<String, dynamic> json) => SearchBookModel(
        numFound: json["numFound"],
        start: json["start"],
        numFoundExact: json["numFoundExact"],
        docs: json["docs"] == null ? null : List<BookData>.from(json["docs"].map((x) => BookData.fromJson(x))),
        searchBookModelNumFound: json["num_found"],
        q: json["q"],
        offset: json["offset"],
    );

    Map<String, dynamic> toJson() => {
        "numFound": numFound,
        "start": start,
        "numFoundExact": numFoundExact,
        "docs": docs == null ? null : List<dynamic>.from(docs!.map((x) => x.toJson())),
        "num_found": searchBookModelNumFound,
        "q": q,
        "offset": offset,
    };
}

class BookData {
    BookData({
        required this.key,
        required this.type,
        required this.seed,
        required this.title,
        required this.titleSuggest,
        required this.hasFulltext,
        required this.editionCount,
        required this.editionKey,
        required this.publishDate,
        required this.publishYear,
        required this.firstPublishYear,
        required this.numberOfPagesMedian,
        required this.lccn,
        required this.publishPlace,
        required this.oclc,
        required this.contributor,
        required this.lcc,
        required this.ddc,
        required this.isbn,
        required this.lastModifiedI,
        required this.ebookCountI,
        required this.ia,
        required this.publicScanB,
        required this.iaCollectionS,
        required this.lendingEditionS,
        required this.lendingIdentifierS,
        required this.printdisabledS,
        required this.coverEditionKey,
        required this.coverI,
        required this.firstSentence,
        required this.publisher,
        required this.language,
        required this.authorKey,
        required this.authorName,
        required this.authorAlternativeName,
        required this.person,
        required this.place,
        required this.subject,
        required this.idAlibrisId,
        required this.idAmazon,
        required this.idBodleianOxfordUniversity,
        required this.idDepsitoLegal,
        required this.idGoodreads,
        required this.idGoogle,
        required this.idHathiTrust,
        required this.idLibrarything,
        required this.idPaperbackSwap,
        required this.idWikidata,
        required this.iaLoadedId,
        required this.iaBoxId,
        required this.publisherFacet,
        required this.personKey,
        required this.placeKey,
        required this.personFacet,
        required this.subjectFacet,
        required this.version,
        required this.placeFacet,
        required this.lccSort,
        required this.authorFacet,
        required this.subjectKey,
        required this.ddcSort,
        required this.idAmazonCaAsin,
        required this.idAmazonCoUkAsin,
        required this.idAmazonDeAsin,
        required this.idAmazonItAsin,
        required this.idCanadianNationalLibraryArchive,
        required this.idOverdrive,
        required this.idBritishLibrary,
        required this.idAbebooksDe,
        required this.idBritishNationalBibliography,
    });

    String? key;
    String? type;
    List<String>? seed;
    String? title;
    String? titleSuggest;
    bool? hasFulltext;
    int? editionCount;
    List<String>? editionKey;
    List<String>? publishDate;
    List<int>? publishYear;
    int? firstPublishYear;
    int? numberOfPagesMedian;
    List<String>? lccn;
    List<String>? publishPlace;
    List<String>? oclc;
    List<String>? contributor;
    List<String>? lcc;
    List<String>? ddc;
    List<String>? isbn;
    int? lastModifiedI;
    int? ebookCountI;
    List<String>? ia;
    bool? publicScanB;
    String? iaCollectionS;
    String? lendingEditionS;
    String? lendingIdentifierS;
    String? printdisabledS;
    String? coverEditionKey;
    int? coverI;
    List<String>? firstSentence;
    List<String>? publisher;
    List<String>? language;
    List<String>? authorKey;
    List<String>? authorName;
    List<String>? authorAlternativeName;
    List<String>? person;
    List<String>? place;
    List<String>? subject;
    List<String>? idAlibrisId;
    List<String>? idAmazon;
    List<String>? idBodleianOxfordUniversity;
    List<String>? idDepsitoLegal;
    List<String>? idGoodreads;
    List<String>? idGoogle;
    List<String>? idHathiTrust;
    List<String>? idLibrarything;
    List<String>? idPaperbackSwap;
    List<String>? idWikidata;
    List<String>? iaLoadedId;
    List<String>? iaBoxId;
    List<String>? publisherFacet;
    List<String>? personKey;
    List<String>? placeKey;
    List<String>? personFacet;
    List<String>? subjectFacet;
    double? version;
    List<String>? placeFacet;
    String? lccSort;
    List<String>? authorFacet;
    List<String>? subjectKey;
    String? ddcSort;
    List<String>? idAmazonCaAsin;
    List<String>? idAmazonCoUkAsin;
    List<String>? idAmazonDeAsin;
    List<String>? idAmazonItAsin;
    List<String>? idCanadianNationalLibraryArchive;
    List<String>? idOverdrive;
    List<String>? idBritishLibrary;
    List<String>? idAbebooksDe;
    List<String>? idBritishNationalBibliography;

    factory BookData.fromRawJson(String str) => BookData.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory BookData.fromJson(Map<String, dynamic> json) => BookData(
        key: json["key"],
        type: json["type"],
        seed: json["seed"] == null ? null : List<String>.from(json["seed"].map((x) => x)),
        title: json["title"],
        titleSuggest: json["title_suggest"],
        hasFulltext: json["has_fulltext"],
        editionCount: json["edition_count"],
        editionKey: json["edition_key"] == null ? null : List<String>.from(json["edition_key"].map((x) => x)),
        publishDate: json["publish_date"] == null ? null : List<String>.from(json["publish_date"].map((x) => x)),
        publishYear: json["publish_year"] == null ? null : List<int>.from(json["publish_year"].map((x) => x)),
        firstPublishYear: json["first_publish_year"],
        numberOfPagesMedian: json["number_of_pages_median"],
        lccn: json["lccn"] == null ? null : List<String>.from(json["lccn"].map((x) => x)),
        publishPlace: json["publish_place"] == null ? null : List<String>.from(json["publish_place"].map((x) => x)),
        oclc: json["oclc"] == null ? null : List<String>.from(json["oclc"].map((x) => x)),
        contributor: json["contributor"] == null ? null : List<String>.from(json["contributor"].map((x) => x)),
        lcc: json["lcc"] == null ? null : List<String>.from(json["lcc"].map((x) => x)),
        ddc: json["ddc"] == null ? null : List<String>.from(json["ddc"].map((x) => x)),
        isbn: json["isbn"] == null ? null : List<String>.from(json["isbn"].map((x) => x)),
        lastModifiedI: json["last_modified_i"],
        ebookCountI: json["ebook_count_i"],
        ia: json["ia"] == null ? null : List<String>.from(json["ia"].map((x) => x)),
        publicScanB: json["public_scan_b"],
        iaCollectionS: json["ia_collection_s"],
        lendingEditionS: json["lending_edition_s"],
        lendingIdentifierS: json["lending_identifier_s"],
        printdisabledS: json["printdisabled_s"],
        coverEditionKey: json["cover_edition_key"],
        coverI: json["cover_i"],
        firstSentence: json["first_sentence"] == null ? null : List<String>.from(json["first_sentence"].map((x) => x)),
        publisher: json["publisher"] == null ? null : List<String>.from(json["publisher"].map((x) => x)),
        language: json["language"] == null ? null : List<String>.from(json["language"].map((x) => x)),
        authorKey: json["author_key"] == null ? null : List<String>.from(json["author_key"].map((x) => x)),
        authorName: json["author_name"] == null ? null : List<String>.from(json["author_name"].map((x) => x)),
        authorAlternativeName: json["author_alternative_name"] == null ? null : List<String>.from(json["author_alternative_name"].map((x) => x)),
        person: json["person"] == null ? null : List<String>.from(json["person"].map((x) => x)),
        place: json["place"] == null ? null : List<String>.from(json["place"].map((x) => x)),
        subject: json["subject"] == null ? null : List<String>.from(json["subject"].map((x) => x)),
        idAlibrisId: json["id_alibris_id"] == null ? null : List<String>.from(json["id_alibris_id"].map((x) => x)),
        idAmazon: json["id_amazon"] == null ? null : List<String>.from(json["id_amazon"].map((x) => x)),
        idBodleianOxfordUniversity: json["id_bodleian__oxford_university"] == null ? null : List<String>.from(json["id_bodleian__oxford_university"].map((x) => x)),
        idDepsitoLegal: json["id_depósito_legal"] == null ? null : List<String>.from(json["id_depósito_legal"].map((x) => x)),
        idGoodreads: json["id_goodreads"] == null ? null : List<String>.from(json["id_goodreads"].map((x) => x)),
        idGoogle: json["id_google"] == null ? null : List<String>.from(json["id_google"].map((x) => x)),
        idHathiTrust: json["id_hathi_trust"] == null ? null : List<String>.from(json["id_hathi_trust"].map((x) => x)),
        idLibrarything: json["id_librarything"] == null ? null : List<String>.from(json["id_librarything"].map((x) => x)),
        idPaperbackSwap: json["id_paperback_swap"] == null ? null : List<String>.from(json["id_paperback_swap"].map((x) => x)),
        idWikidata: json["id_wikidata"] == null ? null : List<String>.from(json["id_wikidata"].map((x) => x)),
        iaLoadedId: json["ia_loaded_id"] == null ? null : List<String>.from(json["ia_loaded_id"].map((x) => x)),
        iaBoxId: json["ia_box_id"] == null ? null : List<String>.from(json["ia_box_id"].map((x) => x)),
        publisherFacet: json["publisher_facet"] == null ? null : List<String>.from(json["publisher_facet"].map((x) => x)),
        personKey: json["person_key"] == null ? null : List<String>.from(json["person_key"].map((x) => x)),
        placeKey: json["place_key"] == null ? null : List<String>.from(json["place_key"].map((x) => x)),
        personFacet: json["person_facet"] == null ? null : List<String>.from(json["person_facet"].map((x) => x)),
        subjectFacet: json["subject_facet"] == null ? null : List<String>.from(json["subject_facet"].map((x) => x)),
        version: json["_version_"] == null ? null : json["_version_"]!.toDouble(),
        placeFacet: json["place_facet"] == null ? null : List<String>.from(json["place_facet"].map((x) => x)),
        lccSort: json["lcc_sort"],
        authorFacet: json["author_facet"] == null ? null : List<String>.from(json["author_facet"].map((x) => x)),
        subjectKey: json["subject_key"] == null ? null : List<String>.from(json["subject_key"].map((x) => x)),
        ddcSort: json["ddc_sort"],
        idAmazonCaAsin: json["id_amazon_ca_asin"] == null ? null : List<String>.from(json["id_amazon_ca_asin"].map((x) => x)),
        idAmazonCoUkAsin: json["id_amazon_co_uk_asin"] == null ? null : List<String>.from(json["id_amazon_co_uk_asin"].map((x) => x)),
        idAmazonDeAsin: json["id_amazon_de_asin"] == null ? null : List<String>.from(json["id_amazon_de_asin"].map((x) => x)),
        idAmazonItAsin: json["id_amazon_it_asin"] == null ? null : List<String>.from(json["id_amazon_it_asin"].map((x) => x)),
        idCanadianNationalLibraryArchive: json["id_canadian_national_library_archive"] == null ? null : List<String>.from(json["id_canadian_national_library_archive"].map((x) => x)),
        idOverdrive: json["id_overdrive"] == null ? null : List<String>.from(json["id_overdrive"].map((x) => x)),
        idBritishLibrary: json["id_british_library"] == null ? null : List<String>.from(json["id_british_library"].map((x) => x)),
        idAbebooksDe: json["id_abebooks_de"] == null ? null : List<String>.from(json["id_abebooks_de"].map((x) => x)),
        idBritishNationalBibliography: json["id_british_national_bibliography"] == null ? null : List<String>.from(json["id_british_national_bibliography"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "key": key,
        "type": type,
        "seed": seed == null ? null : List<dynamic>.from(seed!.map((x) => x)),
        "title": title,
        "title_suggest": titleSuggest,
        "has_fulltext": hasFulltext,
        "edition_count": editionCount,
        "edition_key": editionKey == null ? null : List<dynamic>.from(editionKey!.map((x) => x)),
        "publish_date": publishDate == null ? null : List<dynamic>.from(publishDate!.map((x) => x)),
        "publish_year": publishYear == null ? null : List<dynamic>.from(publishYear!.map((x) => x)),
        "first_publish_year": firstPublishYear,
        "number_of_pages_median": numberOfPagesMedian,
        "lccn": lccn == null ? null : List<dynamic>.from(lccn!.map((x) => x)),
        "publish_place": publishPlace == null ? null : List<dynamic>.from(publishPlace!.map((x) => x)),
        "oclc": oclc == null ? null : List<dynamic>.from(oclc!.map((x) => x)),
        "contributor": contributor == null ? null : List<dynamic>.from(contributor!.map((x) => x)),
        "lcc": lcc == null ? null : List<dynamic>.from(lcc!.map((x) => x)),
        "ddc": ddc == null ? null : List<dynamic>.from(ddc!.map((x) => x)),
        "isbn": isbn == null ? null : List<dynamic>.from(isbn!.map((x) => x)),
        "last_modified_i": lastModifiedI,
        "ebook_count_i": ebookCountI,
        "ia": ia == null ? null : List<dynamic>.from(ia!.map((x) => x)),
        "public_scan_b": publicScanB,
        "ia_collection_s": iaCollectionS,
        "lending_edition_s": lendingEditionS,
        "lending_identifier_s": lendingIdentifierS,
        "printdisabled_s": printdisabledS,
        "cover_edition_key": coverEditionKey,
        "cover_i": coverI,
        "first_sentence": firstSentence == null ? null : List<dynamic>.from(firstSentence!.map((x) => x)),
        "publisher": publisher == null ? null : List<dynamic>.from(publisher!.map((x) => x)),
        "language": language == null ? null : List<dynamic>.from(language!.map((x) => x)),
        "author_key": authorKey == null ? null : List<dynamic>.from(authorKey!.map((x) => x)),
        "author_name": authorName == null ? null : List<dynamic>.from(authorName!.map((x) => x)),
        "author_alternative_name": authorAlternativeName == null ? null : List<dynamic>.from(authorAlternativeName!.map((x) => x)),
        "person": person == null ? null : List<dynamic>.from(person!.map((x) => x)),
        "place": place == null ? null : List<dynamic>.from(place!.map((x) => x)),
        "subject": subject == null ? null : List<dynamic>.from(subject!.map((x) => x)),
        "id_alibris_id": idAlibrisId == null ? null : List<dynamic>.from(idAlibrisId!.map((x) => x)),
        "id_amazon": idAmazon == null ? null : List<dynamic>.from(idAmazon!.map((x) => x)),
        "id_bodleian__oxford_university": idBodleianOxfordUniversity == null ? null : List<dynamic>.from(idBodleianOxfordUniversity!.map((x) => x)),
        "id_depósito_legal": idDepsitoLegal == null ? null : List<dynamic>.from(idDepsitoLegal!.map((x) => x)),
        "id_goodreads": idGoodreads == null ? null : List<dynamic>.from(idGoodreads!.map((x) => x)),
        "id_google": idGoogle == null ? null : List<dynamic>.from(idGoogle!.map((x) => x)),
        "id_hathi_trust": idHathiTrust == null ? null : List<dynamic>.from(idHathiTrust!.map((x) => x)),
        "id_librarything": idLibrarything == null ? null : List<dynamic>.from(idLibrarything!.map((x) => x)),
        "id_paperback_swap": idPaperbackSwap == null ? null : List<dynamic>.from(idPaperbackSwap!.map((x) => x)),
        "id_wikidata": idWikidata == null ? null : List<dynamic>.from(idWikidata!.map((x) => x)),
        "ia_loaded_id": iaLoadedId == null ? null : List<dynamic>.from(iaLoadedId!.map((x) => x)),
        "ia_box_id": iaBoxId == null ? null : List<dynamic>.from(iaBoxId!.map((x) => x)),
        "publisher_facet": publisherFacet == null ? null : List<dynamic>.from(publisherFacet!.map((x) => x)),
        "person_key": personKey == null ? null : List<dynamic>.from(personKey!.map((x) => x)),
        "place_key": placeKey == null ? null : List<dynamic>.from(placeKey!.map((x) => x)),
        "person_facet": personFacet == null ? null : List<dynamic>.from(personFacet!.map((x) => x)),
        "subject_facet": subjectFacet == null ? null : List<dynamic>.from(subjectFacet!.map((x) => x)),
        "_version_": version,
        "place_facet": placeFacet == null ? null : List<dynamic>.from(placeFacet!.map((x) => x)),
        "lcc_sort": lccSort,
        "author_facet": authorFacet == null ? null : List<dynamic>.from(authorFacet!.map((x) => x)),
        "subject_key": subjectKey == null ? null : List<dynamic>.from(subjectKey!.map((x) => x)),
        "ddc_sort": ddcSort,
        "id_amazon_ca_asin": idAmazonCaAsin == null ? null : List<dynamic>.from(idAmazonCaAsin!.map((x) => x)),
        "id_amazon_co_uk_asin": idAmazonCoUkAsin == null ? null : List<dynamic>.from(idAmazonCoUkAsin!.map((x) => x)),
        "id_amazon_de_asin": idAmazonDeAsin == null ? null : List<dynamic>.from(idAmazonDeAsin!.map((x) => x)),
        "id_amazon_it_asin": idAmazonItAsin == null ? null : List<dynamic>.from(idAmazonItAsin!.map((x) => x)),
        "id_canadian_national_library_archive": idCanadianNationalLibraryArchive == null ? null : List<dynamic>.from(idCanadianNationalLibraryArchive!.map((x) => x)),
        "id_overdrive": idOverdrive == null ? null : List<dynamic>.from(idOverdrive!.map((x) => x)),
        "id_british_library": idBritishLibrary == null ? null : List<dynamic>.from(idBritishLibrary!.map((x) => x)),
        "id_abebooks_de": idAbebooksDe == null ? null : List<dynamic>.from(idAbebooksDe!.map((x) => x)),
        "id_british_national_bibliography": idBritishNationalBibliography == null ? null : List<dynamic>.from(idBritishNationalBibliography!.map((x) => x)),
    };
}
