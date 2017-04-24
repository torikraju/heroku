package com.noticeBoard.customAnnotation;

import static java.lang.annotation.ElementType.ANNOTATION_TYPE;
import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import javax.validation.Payload;

@Target({ METHOD, FIELD, ANNOTATION_TYPE })
@Retention(RUNTIME)
@Documented
@Constraint(validatedBy = Username.UsernameImpl.class)

public @interface Username {

	String message() default "Empty field found";

	Class<?>[] groups() default {};

	Class<? extends Payload>[] payload() default {};

	class UsernameImpl implements ConstraintValidator<Username, String> {

		public void initialize(Username username) {

		}

		@Override
		public boolean isValid(String username, ConstraintValidatorContext context) {
			return username.matches("^[A-Za-z_][A-Za-z0-9_]{4,29}$");
		}
	}

}
