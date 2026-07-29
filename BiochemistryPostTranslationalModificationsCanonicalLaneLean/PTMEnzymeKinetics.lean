import HautevilleHouse.BiochemistryPostTranslationalModificationsCanonicalLaneLean.PTMObjects

namespace HautevilleHouse
namespace BiochemistryPostTranslationalModificationsCanonicalLaneLean

structure PTMEnzymeKineticsPackage where
  enzyme : String
  substrate : String
  michaelisConstant : Float
  turnoverNumber : Float
  catalyticEfficiency : Float

def PTMEnzymeKineticsClosed (K : PTMEnzymeKineticsPackage) : Prop :=
  K.catalyticEfficiency > 0

end BiochemistryPostTranslationalModificationsCanonicalLaneLean
end HautevilleHouse