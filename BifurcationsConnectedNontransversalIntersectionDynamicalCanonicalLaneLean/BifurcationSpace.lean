import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean

structure BifurcationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BifurcationAdmittedObject where
  space : BifurcationSpace
  parameterSpace : Type
  equilibriumPoint : space.carrier
  nontransversalCondition : Prop
  conclusion : Prop

def BifurcationWitnessClosed (O : BifurcationAdmittedObject) : Prop :=
  O.conclusion

end BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean
end HautevilleHouse