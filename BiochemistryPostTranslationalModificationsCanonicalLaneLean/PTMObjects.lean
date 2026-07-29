import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPostTranslationalModificationsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure PTMAdmittedObject where
  modificationType : String
  site : String
  enzyme : String
  substrate : String
  state : Bool
  conclusion : Prop

structure PTMAdmissibleClass where
  object : PTMAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : PTMAdmissibleClass) : Prop :=
  PTMWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryPostTranslationalModificationsCanonicalLaneLean
end HautevilleHouse