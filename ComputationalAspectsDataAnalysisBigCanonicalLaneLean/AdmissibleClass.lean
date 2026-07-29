import ComputationalAspectsDataAnalysisBigCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ComputationalAspectsDataAnalysisBigCanonicalLaneLean

structure AdmissibleClass where
  lane : BigDataAdmittedObject
  solverDecidesProjectedLanguage : Decides lane.solver lane.projectedLanguage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  Decides A.lane.solver A.lane.projectedLanguage ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end ComputationalAspectsDataAnalysisBigCanonicalLaneLean
end HautevilleHouse
