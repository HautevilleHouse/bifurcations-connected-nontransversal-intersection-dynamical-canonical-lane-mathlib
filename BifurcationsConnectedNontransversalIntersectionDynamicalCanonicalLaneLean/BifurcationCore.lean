import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean

structure BifurcationAdmittedObject where
  phaseSpace : Type u
  family : Type v
  bifurcationParameter : family
  nontransversalIntersection : Prop
  connectedComponentProperty : Prop
  conclusion : nontransversalIntersection ∧ connectedComponentProperty

structure BifurcationAdmissibleClass where
  object : BifurcationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def BifurcationWitnessClosed (O : BifurcationAdmittedObject) : Prop :=
  O.conclusion

def bridgeClosed (A : BifurcationAdmissibleClass) : Prop :=
  BifurcationWitnessClosed A.object

theorem bridge_from_admissible_class (A : BifurcationAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : BifurcationAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : BifurcationAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean
end HautevilleHouse