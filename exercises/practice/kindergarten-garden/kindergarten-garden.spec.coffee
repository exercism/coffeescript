KindergartenGarden = require "./kindergarten-garden"

describe "Kindergarten Garden", ->
  describe "partial garden", ->
    it "garden with single student", ->
      diagram = new KindergartenGarden "RC\nGG"
      expect(diagram.plants "Alice").toEqual ["radishes", "clover", "grass", "grass"]

    xit "different garden with single student", ->
        diagram = new KindergartenGarden "VC\nRC"
        expect(diagram.plants "Alice").toEqual ["violets", "clover", "radishes", "clover"]

    xit "garden with two students", ->
        diagram = new KindergartenGarden "VVCG\nVVRC"
        expect(diagram.plants "Bob").toEqual ["clover", "grass", "radishes", "clover"]

  describe "multiple students for the same garden with three students", ->
    xit "second student's garden", ->
        diagram = new KindergartenGarden "VVCCGG\nVVCCGG"
        expect(diagram.plants "Bob").toEqual ["clover", "clover", "clover", "clover"]

    xit "third student's garden", ->
        diagram = new KindergartenGarden "VVCCGG\nVVCCGG"
        expect(diagram.plants "Charlie").toEqual ["grass", "grass", "grass", "grass"]

  describe "full garden", ->
    xit "for Alice, first student's garden", ->
        diagram = new KindergartenGarden "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV"
        expect(diagram.plants "Alice").toEqual ["violets", "radishes", "violets", "radishes"]

    xit "for Bob, second student's garden", ->
        diagram = new KindergartenGarden "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV"
        expect(diagram.plants "Bob").toEqual ["clover", "grass", "clover", "clover"]

    xit "for Charlie", ->
        diagram = new KindergartenGarden "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV"
        expect(diagram.plants "Charlie").toEqual ["violets", "violets", "clover", "grass"]

    xit "for David", ->
        diagram = new KindergartenGarden "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV"
        expect(diagram.plants "David").toEqual ["radishes", "violets", "clover", "radishes"]

    xit "for Eve", ->
        diagram = new KindergartenGarden "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV"
        expect(diagram.plants "Eve").toEqual ["clover", "grass", "radishes", "grass"]

    xit "for Fred", ->
        diagram = new KindergartenGarden "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV"
        expect(diagram.plants "Fred").toEqual ["grass", "clover", "violets", "clover"]

    xit "for Ginny", ->
        diagram = new KindergartenGarden "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV"
        expect(diagram.plants "Ginny").toEqual ["clover", "grass", "grass", "clover"]

    xit "for Harriet", ->
        diagram = new KindergartenGarden "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV"
        expect(diagram.plants "Harriet").toEqual ["violets", "radishes", "radishes", "violets"]

    xit "for Ileana", ->
        diagram = new KindergartenGarden "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV"
        expect(diagram.plants "Ileana").toEqual ["grass", "clover", "violets", "clover"]

    xit "for Joseph", ->
        diagram = new KindergartenGarden "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV"
        expect(diagram.plants "Joseph").toEqual ["violets", "clover", "violets", "grass"]

    xit "for Kincaid, second to last student's garden", ->
        diagram = new KindergartenGarden "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV"
        expect(diagram.plants "Kincaid").toEqual ["grass", "clover", "clover", "grass"]

    xit "for Larry, last student's garden", ->
        diagram = new KindergartenGarden "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV"
        expect(diagram.plants "Larry").toEqual ["grass", "violets", "clover", "violets"]
