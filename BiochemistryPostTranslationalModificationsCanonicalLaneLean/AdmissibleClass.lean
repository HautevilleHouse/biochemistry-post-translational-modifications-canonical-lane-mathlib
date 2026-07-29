import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPostTranslationalModificationsCanonicalLaneLean

structure PTMObject where
  enzyme : Type
  substrate : Type
  modificationSite : String
  modificationCompleted : Prop

structure AdmissibleClass where
  object : PTMObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.modificationCompleted) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryPostTranslationalModificationsCanonicalLaneLean
end HautevilleHouse