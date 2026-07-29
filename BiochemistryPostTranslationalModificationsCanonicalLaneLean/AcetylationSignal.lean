import HautevilleHouse.BiochemistryPostTranslationalModificationsCanonicalLaneLean.PTMObjects

namespace HautevilleHouse
namespace BiochemistryPostTranslationalModificationsCanonicalLaneLean

structure AcetylationSignalPackage where
  residue : String
  acetyltransferase : String
  deacetylase : String
  acetylationState : Bool
  signalStrength : Float

def AcetylationSignalClosed (A : AcetylationSignalPackage) : Prop :=
  A.signalStrength > 0.5

end BiochemistryPostTranslationalModificationsCanonicalLaneLean
end HautevilleHouse