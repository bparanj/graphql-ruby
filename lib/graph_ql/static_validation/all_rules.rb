# Default rules for {GraphQL::StaticValidation::Validator}
#
# Order is important here. Some validators return {GraphQL::Visitor::SKIP}
# which stops the visit on that node. That way it doesn't try to find fields on types that
# don't exist, etc.
GraphQL::StaticValidation::ALL_RULES = [
  GraphQL::StaticValidation::DirectivesAreDefined,
  GraphQL::StaticValidation::FragmentsAreFinite,
  GraphQL::StaticValidation::FragmentTypesExist,
  GraphQL::StaticValidation::FragmentsAreOnCompositeTypes,
  GraphQL::StaticValidation::FragmentSpreadsArePossible,
  GraphQL::StaticValidation::FragmentsAreUsed,
  GraphQL::StaticValidation::FieldsAreDefinedOnType,
  GraphQL::StaticValidation::FieldsWillMerge,
  GraphQL::StaticValidation::FieldsHaveAppropriateSelections,
  GraphQL::StaticValidation::ArgumentsAreDefined,
  GraphQL::StaticValidation::ArgumentLiteralsAreCompatible,
  GraphQL::StaticValidation::RequiredArgumentsArePresent,
  GraphQL::StaticValidation::VariablesAreInputTypes,
  GraphQL::StaticValidation::VariableDefaultValuesAreCorrectlyTyped,
  GraphQL::StaticValidation::VariablesAreUsedAndDefined,
  GraphQL::StaticValidation::VariableUsagesAreAllowed,
]