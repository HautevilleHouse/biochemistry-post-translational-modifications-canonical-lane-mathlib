import HautevilleHouse.BiochemistryPostTranslationalModificationsCanonicalLaneLean.PTMObjects

namespace HautevilleHouse
namespace BiochemistryPostTranslationalModificationsCanonicalLaneLean

structure PhosphorylationSitePackage where
  residue : String
  kinase : String
  phosphatase : String
  phosphorylationState : Bool
  kineticRate : Float

def PhosphorylationSiteClosed (P : PhosphorylationSitePackage) : Prop :=
  P.phosphorylationState = true ∨ P.phosphorylationState = false

end BiochemistryPostTranslationalModificationsCanonicalLaneLean
end HautevilleHouse