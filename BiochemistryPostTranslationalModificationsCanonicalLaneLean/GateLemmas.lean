import HautevilleHouse.BiochemistryPostTranslationalModificationsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BiochemistryPostTranslationalModificationsCanonicalLaneLean

def gateClosed (A : PTMAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : PTMAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BiochemistryPostTranslationalModificationsCanonicalLaneLean
end HautevilleHouse