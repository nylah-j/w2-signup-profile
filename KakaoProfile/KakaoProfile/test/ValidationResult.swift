//
//  IdPlaceHolder.swift
//  KakaoProfile
//
//  Created by nylah.j on 2022/01/19.
//

import Foundation



protocol ValidationResult {
    var value: String { get }
}


enum IdValidationResult: ValidationResult {
    case invalidFormat
    case duplication
    case usableness
    
    var value: String {
        switch self {
        case .invalidFormat:
            return " 5~20자의 영문 소문자, 숫자와 특수기호_,- 만 사용 가능합니다."
        case .duplication:
            return "이미 사용중인 아이디입니다."
        case .usableness:
            return "사용 가능한 아이디입니다."
        }
    }
}

enum PasswordCautionContent: ValidationResult {
    case invalidSize
    case uppercaseNonExist
    case numberNonExist
    case specialSymbolNonExist
    case usableness
    
    var value: String {
        switch self {
        case .invalidSize:
            return "8자 이상 16자 이하로 입력해주세요."
        case .uppercaseNonExist:
            return "영문 대문자를 최소 1자 이상 포함해주세요."
        case .numberNonExist:
            return "숫자를 최소 1자 이상 포함해주세요."
        case .specialSymbolNonExist:
            return "특수문자를 최소 1자 이상 포함해주세요."
        case .usableness:
            return "안전한 비밀번호입니다."
        }
    }
}

enum RePasswordCautionContent: ValidationResult {
    case nonMatch
    case match
    
    var value: String {
        switch self {
        case .nonMatch:
            return "비밀번호가 일치하지 않습니다."
        case .match:
            return "비밀번호가 일치합니다."
        }
    }
}

enum NameCautionContent: ValidationResult {
    case nonExist
        
    var value: String {
        switch self {
        case .nonExist:
            return "이름은 필수 입력항목입니다."
        }
    }
}
