import HautevilleHouse.BiochemistryPostTranslationalModificationsCanonicalLaneLean.PTMObjects

namespace HautevilleHouse
namespace BiochemistryPostTranslationalModificationsCanonicalLaneLean

structure PTMNetworkPackage where
  nodes : List String
  edges : List (String × String)
  interactions : List (String × String × String)
  networkStable : Prop

def PTMNetworkClosed (N : PTMNetworkPackage) : Prop :=
  N.networkStable

end BiochemistryPostTranslationalModificationsCanonicalLaneLean
end HautevilleHouse