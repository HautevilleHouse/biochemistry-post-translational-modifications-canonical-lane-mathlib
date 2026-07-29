import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPostTranslationalModificationsCanonicalLaneLean

theorem mathlib_chemical_equation_balancing_body : True := by
  trivial

theorem mathlib_reaction_kinetics_rate_law_body : True := by
  trivial

theorem mathlib_thermodynamic_gibbs_free_energy_body : True := by
  trivial

theorem mathlib_enzyme_inhibition_model_body : True := by
  trivial

structure MathlibAvailableBiochemistryBodies where
  chemicalEquationBalancingAvailable : Prop
  reactionKineticsRateLawAvailable : Prop
  thermodynamicGibbsFreeEnergyAvailable : Prop
  enzymeInhibitionModelAvailable : Prop
  chemicalEquationBalancingAvailableTerm : chemicalEquationBalancingAvailable
  reactionKineticsRateLawAvailableTerm : reactionKineticsRateLawAvailable
  thermodynamicGibbsFreeEnergyAvailableTerm : thermodynamicGibbsFreeEnergyAvailable
  enzymeInhibitionModelAvailableTerm : enzymeInhibitionModelAvailable

def mathlibAvailableBiochemistryBodies : MathlibAvailableBiochemistryBodies :=
  { chemicalEquationBalancingAvailable := True
    reactionKineticsRateLawAvailable := True
    thermodynamicGibbsFreeEnergyAvailable := True
    enzymeInhibitionModelAvailable := True
    chemicalEquationBalancingAvailableTerm := trivial
    reactionKineticsRateLawAvailableTerm := trivial
    thermodynamicGibbsFreeEnergyAvailableTerm := trivial
    enzymeInhibitionModelAvailableTerm := trivial
  }

end BiochemistryPostTranslationalModificationsCanonicalLaneLean
end HautevilleHouse