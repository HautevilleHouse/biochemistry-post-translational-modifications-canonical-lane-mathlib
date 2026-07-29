import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPostTranslationalModificationsCanonicalLaneLean

inductive PTMType where
  | phosphorylation
  | acetylation
  | methylation
  | ubiquitination
  | glycosylation
  | sumoylation
  | other (desc : String)
deriving Repr, DecidableEq

structure PTMClassificationPackage where
  modificationType : PTMType
  targetResidue : String
  enzymeFamily : String
  cellularProcess : String
  classificationEvidence : Prop

structure PTMClassificationEvidence (C : PTMClassificationPackage) where
  classificationClosed : C.classificationEvidence

def PTMClassificationClosed (C : PTMClassificationPackage) : Prop :=
  C.classificationEvidence

theorem ptm_classification_closed_from_evidence
    (C : PTMClassificationPackage) (Ev : PTMClassificationEvidence C) :
    PTMClassificationClosed C := by
  exact Ev.classificationClosed

end BiochemistryPostTranslationalModificationsCanonicalLaneLean
end HautevilleHouse