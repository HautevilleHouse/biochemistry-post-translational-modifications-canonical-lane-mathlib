import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPostTranslationalModificationsCanonicalLaneLean

structure PTMNetworkPackage where
  nodes : List String
  edges : List (String × String)
  directed : Bool
  connectivityValid : Prop
  modificationTypes : List String

structure PTMNetworkEvidence (N : PTMNetworkPackage) where
  connectivityValidClosed : N.connectivityValid
  noSelfLoops : ∀ (a : String), (a, a) ∉ N.edges

def PTMNetworkClosed (N : PTMNetworkPackage) : Prop :=
  N.connectivityValid ∧ ∀ (a : String), (a, a) ∉ N.edges

theorem ptm_network_closed_from_evidence (N : PTMNetworkPackage)
    (Ev : PTMNetworkEvidence N) : PTMNetworkClosed N := by
  exact And.intro Ev.connectivityValidClosed Ev.noSelfLoops

end BiochemistryPostTranslationalModificationsCanonicalLaneLean
end HautevilleHouse