import HautevilleHouse.BiochemistryPostTranslationalModificationsCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.BiochemistryPostTranslationalModificationsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BiochemistryPostTranslationalModificationsCanonicalLaneLean

def ConstrainedPTMClosure (A : PTMAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem ptm_endgame (A : PTMAdmissibleClass) :
    ConstrainedPTMClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiochemistryPostTranslationalModificationsCanonicalLaneLean
end HautevilleHouse