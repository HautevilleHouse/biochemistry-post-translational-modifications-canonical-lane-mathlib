import HautevilleHouse.BiochemistryPostTranslationalModificationsCanonicalLaneLean.PTMObjects

namespace HautevilleHouse
namespace BiochemistryPostTranslationalModificationsCanonicalLaneLean

structure UbiquitinationChainPackage where
  chainType : String
  linkage : String
  chainLength : Nat
  substrate : String
  ligase : String

def UbiquitinationChainClosed (U : UbiquitinationChainPackage) : Prop :=
  U.chainLength > 0

end BiochemistryPostTranslationalModificationsCanonicalLaneLean
end HautevilleHouse