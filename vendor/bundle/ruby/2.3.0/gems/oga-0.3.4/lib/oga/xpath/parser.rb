# This file is automatically generated by ruby-ll. Manually changing this file
# is not recommended as any changes will be lost the next time this parser is
# re-generated.
require 'll/setup'

module Oga
module XPath
##
# AST parser for XPath expressions. The AST is built using `AST::Node`
# instances.
#
# Unlike {Oga::XML::Parser} this parser only takes String instances as input.
#
class Parser < LL::Driver
  CONFIG = LL::DriverConfig.new

  CONFIG.terminals = [
    :$EOF, # 0
    :T_AXIS, # 1
    :T_COLON, # 2
    :T_COMMA, # 3
    :T_FLOAT, # 4
    :T_INT, # 5
    :T_IDENT, # 6
    :T_TYPE_TEST, # 7
    :T_LBRACK, # 8
    :T_RBRACK, # 9
    :T_LPAREN, # 10
    :T_RPAREN, # 11
    :T_SLASH, # 12
    :T_STRING, # 13
    :T_PIPE, # 14
    :T_AND, # 15
    :T_OR, # 16
    :T_ADD, # 17
    :T_DIV, # 18
    :T_MOD, # 19
    :T_EQ, # 20
    :T_NEQ, # 21
    :T_LT, # 22
    :T_GT, # 23
    :T_LTE, # 24
    :T_GTE, # 25
    :T_SUB, # 26
    :T_MUL, # 27
    :T_VAR, # 28
  ].freeze

  CONFIG.rules = [
    [3, 0, 8, 34], # 0
    [3, 1, 4, 35, 6, 0, 0, 3], # 1
    [3, 2, 0, 3, 1, 16], # 2
    [3, 3, 4, 36, 6, 0, 0, 5], # 3
    [3, 4, 0, 5, 1, 15], # 4
    [3, 5, 4, 37, 6, 0, 0, 7], # 5
    [3, 6, 0, 7, 1, 20], # 6
    [3, 7, 0, 7, 1, 21], # 7
    [3, 8, 4, 38, 6, 0, 0, 9], # 8
    [3, 9, 0, 9, 1, 22], # 9
    [3, 10, 0, 9, 1, 23], # 10
    [3, 11, 0, 9, 1, 24], # 11
    [3, 12, 0, 9, 1, 25], # 12
    [3, 13, 4, 39, 6, 0, 0, 11], # 13
    [3, 14, 0, 11, 1, 17], # 14
    [3, 15, 0, 11, 1, 26], # 15
    [3, 16, 8, 40, 0, 13], # 16
    [3, 17, 0, 11, 1, 18], # 17
    [3, 18, 0, 11, 1, 19], # 18
    [3, 19, 0, 11, 1, 27], # 19
    [3, 20, 4, 41, 6, 0, 0, 15], # 20
    [3, 21, 0, 15, 1, 14], # 21
    [3, 22, 0, 16], # 22
    [3, 23, 0, 19], # 23
    [3, 24, 0, 31], # 24
    [3, 25, 0, 32], # 25
    [3, 26, 0, 33], # 26
    [3, 27, 1, 11, 0, 1, 1, 10], # 27
    [3, 28, 0, 17], # 28
    [3, 29, 4, 42, 6, 0, 0, 20], # 29
    [3, 30, 0, 20, 1, 12], # 30
    [3, 31, 8, 43, 1, 12], # 31
    [3, 32, 0, 21], # 32
    [3, 33, 0, 29], # 33
    [3, 34, 0, 22, 1, 6], # 34
    [3, 35, 0, 24], # 35
    [3, 36, 1, 11, 0, 27, 1, 10], # 36
    [3, 37, 8, 44, 1, 6, 1, 2], # 37
    [3, 38, 8, 45], # 38
    [3, 39, 1, 9, 0, 1, 1, 8], # 39
    [3, 40, 1, 7], # 40
    [3, 41, 8, 46, 1, 6], # 41
    [3, 42, 1, 6, 1, 2], # 42
    [3, 43, 4, 47, 6, 0, 0, 1], # 43
    [3, 44, 2, 0], # 44
    [3, 45, 0, 1, 1, 3], # 45
    [3, 46, 8, 48, 0, 30, 1, 1], # 46
    [3, 47, 0, 25], # 47
    [3, 48, 0, 24], # 48
    [3, 49, 1, 13], # 49
    [3, 50, 1, 5], # 50
    [3, 51, 1, 4], # 51
    [3, 52, 1, 28], # 52
    [3, 53, 0, 1], # 53
    [3, 54, 0, 2], # 54
    [3, 55, 0, 4], # 55
    [3, 56, 0, 6], # 56
    [3, 57, 0, 8], # 57
    [3, 58, 0, 10], # 58
    [3, 59, 0, 12], # 59
    [3, 60, 0, 14], # 60
    [3, 61, 0, 18], # 61
    [3, 62, 0, 17], # 62
    [3, 63, 0, 23], # 63
    [3, 64, 0, 23], # 64
    [3, 65, 0, 26], # 65
    [3, 66, 0, 28], # 66
    [3, 67, 0, 23], # 67
  ].freeze

  CONFIG.table = [
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], # 0
    [-1, 1, -1, -1, 1, 1, 1, 1, -1, -1, 1, -1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1], # 1
    [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 2
    [-1, 3, -1, -1, 3, 3, 3, 3, -1, -1, 3, -1, 3, 3, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 3], # 3
    [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 4, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 4
    [-1, 5, -1, -1, 5, 5, 5, 5, -1, -1, 5, -1, 5, 5, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 5], # 5
    [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 6, 7, -1, -1, -1, -1, -1, -1, -1], # 6
    [-1, 8, -1, -1, 8, 8, 8, 8, -1, -1, 8, -1, 8, 8, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 8], # 7
    [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 9, 10, 11, 12, -1, -1, -1], # 8
    [-1, 13, -1, -1, 13, 13, 13, 13, -1, -1, 13, -1, 13, 13, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 13], # 9
    [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 14, -1, -1, -1, -1, -1, -1, -1, -1, 15, -1, -1], # 10
    [-1, 16, -1, -1, 16, 16, 16, 16, -1, -1, 16, -1, 16, 16, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 16], # 11
    [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 17, 18, -1, -1, -1, -1, -1, -1, -1, 19, -1], # 12
    [-1, 20, -1, -1, 20, 20, 20, 20, -1, -1, 20, -1, 20, 20, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 20], # 13
    [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 21, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 14
    [-1, 22, -1, -1, 25, 25, 22, 22, -1, -1, 27, -1, 23, 24, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 26], # 15
    [-1, 28, -1, -1, -1, -1, 28, 28, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 16
    [-1, 29, -1, -1, -1, -1, 29, 29, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 17
    [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 30, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 18
    [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 31, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 19
    [-1, 33, -1, -1, -1, -1, 32, 32, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 20
    [-1, -1, -1, -1, -1, -1, 34, 35, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 21
    [38, 38, 37, 38, 38, 38, 38, 38, 38, 38, 36, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38], # 22
    [-1, -1, -1, -1, -1, -1, -1, -1, 39, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 23
    [-1, -1, -1, -1, -1, -1, -1, 40, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 24
    [-1, -1, -1, -1, -1, -1, 41, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 25
    [-1, -1, 42, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 26
    [44, 43, 44, 44, 43, 43, 43, 43, 44, 44, 43, 44, 43, 43, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 43], # 27
    [-1, -1, -1, 45, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 28
    [-1, 46, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 29
    [-1, -1, -1, -1, -1, -1, 47, 48, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 30
    [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 49, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 31
    [-1, -1, -1, -1, 51, 50, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 32
    [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 52], # 33
    [-1, 53, -1, -1, 53, 53, 53, 53, -1, -1, 53, -1, 53, 53, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 53], # 34
    [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 54, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 35
    [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 55, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 36
    [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 56, 56, -1, -1, -1, -1, -1, -1, -1], # 37
    [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 57, 57, 57, 57, -1, -1, -1], # 38
    [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 58, -1, -1, -1, -1, -1, -1, -1, -1, 58, -1, -1], # 39
    [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 59, 59, -1, -1, -1, -1, -1, -1, -1, 59, -1], # 40
    [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 60, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 41
    [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 61, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 42
    [-1, 62, -1, -1, -1, -1, 62, 62, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 43
    [-1, -1, -1, -1, -1, -1, -1, -1, 63, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 44
    [-1, -1, -1, -1, -1, -1, -1, -1, 64, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 45
    [-1, -1, 65, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 46
    [-1, -1, -1, 66, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 47
    [-1, -1, -1, -1, -1, -1, -1, -1, 67, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 48
  ].freeze

  CONFIG.actions = [
    [:_rule_0, 1], # 0
    [:_rule_1, 2], # 1
    [:_rule_2, 2], # 2
    [:_rule_3, 2], # 3
    [:_rule_4, 2], # 4
    [:_rule_5, 2], # 5
    [:_rule_6, 2], # 6
    [:_rule_7, 2], # 7
    [:_rule_8, 2], # 8
    [:_rule_9, 2], # 9
    [:_rule_10, 2], # 10
    [:_rule_11, 2], # 11
    [:_rule_12, 2], # 12
    [:_rule_13, 2], # 13
    [:_rule_14, 2], # 14
    [:_rule_15, 2], # 15
    [:_rule_16, 2], # 16
    [:_rule_17, 2], # 17
    [:_rule_18, 2], # 18
    [:_rule_19, 2], # 19
    [:_rule_20, 2], # 20
    [:_rule_21, 2], # 21
    [:_rule_22, 1], # 22
    [:_rule_23, 1], # 23
    [:_rule_24, 1], # 24
    [:_rule_25, 1], # 25
    [:_rule_26, 1], # 26
    [:_rule_27, 3], # 27
    [:_rule_28, 1], # 28
    [:_rule_29, 2], # 29
    [:_rule_30, 2], # 30
    [:_rule_31, 2], # 31
    [:_rule_32, 1], # 32
    [:_rule_33, 1], # 33
    [:_rule_34, 2], # 34
    [:_rule_35, 1], # 35
    [:_rule_36, 3], # 36
    [:_rule_37, 3], # 37
    [:_rule_38, 1], # 38
    [:_rule_39, 3], # 39
    [:_rule_40, 1], # 40
    [:_rule_41, 2], # 41
    [:_rule_42, 2], # 42
    [:_rule_43, 2], # 43
    [:_rule_44, 0], # 44
    [:_rule_45, 2], # 45
    [:_rule_46, 3], # 46
    [:_rule_47, 1], # 47
    [:_rule_48, 1], # 48
    [:_rule_49, 1], # 49
    [:_rule_50, 1], # 50
    [:_rule_51, 1], # 51
    [:_rule_52, 1], # 52
    [:_rule_53, 1], # 53
    [:_rule_54, 1], # 54
    [:_rule_55, 1], # 55
    [:_rule_56, 1], # 56
    [:_rule_57, 1], # 57
    [:_rule_58, 1], # 58
    [:_rule_59, 1], # 59
    [:_rule_60, 1], # 60
    [:_rule_61, 1], # 61
    [:_rule_62, 1], # 62
    [:_rule_63, 1], # 63
    [:_rule_64, 1], # 64
    [:_rule_65, 1], # 65
    [:_rule_66, 1], # 66
    [:_rule_67, 1], # 67
  ].freeze

  ##
  # @return [Oga::LRU]
  #
  CACHE = LRU.new

  ##
  # @param [String] data
  # @return [AST::Node]
  #
  def self.parse_with_cache(data)
    return CACHE.get_or_set(data) { new(data).parse }
  end

  ##
  # @param [String] data The input to parse.
  #
  def initialize(data)
    @lexer = Lexer.new(data)
  end

  ##
  # Creates a new XPath node.
  #
  # @param [Symbol] type
  # @param [Array] children
  # @return [AST::Node]
  #
  def s(type, *children)
    return AST::Node.new(type, children)
  end

  ##
  # Yields the next token from the lexer.
  #
  # @yieldparam [Array]
  #
  def each_token
    @lexer.advance do |type, value, line|
      @line = line if line

      yield [type, value]
    end

    yield [-1, -1]
  end

  ##
  # @param [Array] val
  #
  def combine_operators(val)
    ret = val[0]

    val[1].each do |expr|
      ret = s(expr[0], ret, expr[1])
    end

    return ret
  end

  ##
  # @param [Array] val
  #
  def combine_optional_operator(val)
    ret = val[0]

    if val[1]
      ret = s(val[1][0], ret, val[1][1])
    end

    ret
  end

  def _rule_0(val)
    val[0]
  end

  def _rule_1(val)
     combine_operators(val) 
  end

  def _rule_2(val)
     [:or, val[1]] 
  end

  def _rule_3(val)
     combine_operators(val) 
  end

  def _rule_4(val)
     [:and, val[1]] 
  end

  def _rule_5(val)
     combine_operators(val) 
  end

  def _rule_6(val)
     [:eq, val[1]] 
  end

  def _rule_7(val)
     [:neq, val[1]] 
  end

  def _rule_8(val)
     combine_operators(val) 
  end

  def _rule_9(val)
     [:lt, val[1]] 
  end

  def _rule_10(val)
     [:gt, val[1]] 
  end

  def _rule_11(val)
     [:lte, val[1]] 
  end

  def _rule_12(val)
     [:gte, val[1]] 
  end

  def _rule_13(val)
     combine_operators(val) 
  end

  def _rule_14(val)
     [:add, val[1]] 
  end

  def _rule_15(val)
     [:sub, val[1]] 
  end

  def _rule_16(val)
     combine_optional_operator(val) 
  end

  def _rule_17(val)
     [:div, val[1]] 
  end

  def _rule_18(val)
     [:mod, val[1]] 
  end

  def _rule_19(val)
     [:mul, val[1]] 
  end

  def _rule_20(val)
     combine_operators(val) 
  end

  def _rule_21(val)
     [:pipe, val[1]] 
  end

  def _rule_22(val)
    val[0]
  end

  def _rule_23(val)
    val[0]
  end

  def _rule_24(val)
    val[0]
  end

  def _rule_25(val)
    val[0]
  end

  def _rule_26(val)
    val[0]
  end

  def _rule_27(val)
     val[1] 
  end

  def _rule_28(val)
     val[0].length > 1 ? s(:path, *val[0]) : val[0][0] 
  end

  def _rule_29(val)
     [val[0], *val[1]] 
  end

  def _rule_30(val)
     val[1] 
  end

  def _rule_31(val)
     s(:absolute_path, *val[1]) 
  end

  def _rule_32(val)
    val[0]
  end

  def _rule_33(val)
    val[0]
  end

  def _rule_34(val)
    
      type = val[1][0]
      args = val[1][1]
      pred = val[1][2]

      if type == :test
        # Whenever a bare test is used (e.g. just "A") this actually means
        # "child::A". Handling this on parser level is the easiest.
        if args
          node = s(:axis, 'child', s(:test, val[0], args))
        else
          node = s(:axis, 'child', s(:test, nil, val[0]))
        end
      else
        node = s(type, val[0], *args)
      end

      if pred
        node = s(:predicate, node, pred)
      end

      node
    
  end

  def _rule_35(val)
     s(:axis, 'child', val[0]) 
  end

  def _rule_36(val)
     [:call, val[1]] 
  end

  def _rule_37(val)
     [:test, val[1], val[2]] 
  end

  def _rule_38(val)
     [:test, nil, val[0]] 
  end

  def _rule_39(val)
     val[1] 
  end

  def _rule_40(val)
     s(:type_test, val[0]) 
  end

  def _rule_41(val)
    
      val[1] ? s(:test, val[0], val[1]) : s(:test, nil, val[0])
    
  end

  def _rule_42(val)
     val[1] 
  end

  def _rule_43(val)
     [val[0], *val[1]] 
  end

  def _rule_44(val)
    val
  end

  def _rule_45(val)
     val[1] 
  end

  def _rule_46(val)
    
      ret = s(:axis, val[0], val[1])

      if val[2]
        ret = s(:predicate, ret, val[2])
      end

      ret
    
  end

  def _rule_47(val)
    val[0]
  end

  def _rule_48(val)
    val[0]
  end

  def _rule_49(val)
     s(:string, val[0]) 
  end

  def _rule_50(val)
     s(:int, val[0]) 
  end

  def _rule_51(val)
     s(:float, val[0]) 
  end

  def _rule_52(val)
     s(:var, val[0]) 
  end

  def _rule_53(val)
    val[0]
  end

  def _rule_54(val)
    val[0]
  end

  def _rule_55(val)
    val[0]
  end

  def _rule_56(val)
    val[0]
  end

  def _rule_57(val)
    val[0]
  end

  def _rule_58(val)
    val[0]
  end

  def _rule_59(val)
    val[0]
  end

  def _rule_60(val)
    val[0]
  end

  def _rule_61(val)
    val[0]
  end

  def _rule_62(val)
    val[0]
  end

  def _rule_63(val)
    val[0]
  end

  def _rule_64(val)
    val[0]
  end

  def _rule_65(val)
    val[0]
  end

  def _rule_66(val)
    val[0]
  end

  def _rule_67(val)
    val[0]
  end
end
end
end