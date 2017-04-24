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
@Constraint(validatedBy = ValidEmail.ValidEmailImpl.class)

public @interface ValidEmail {

	String message() default "Empty field found";

	Class<?>[] groups() default {};

	Class<? extends Payload>[] payload() default {};

	class ValidEmailImpl implements ConstraintValidator<ValidEmail, String> {

		public void initialize(ValidEmail email) {

		}

		@Override
		public boolean isValid(String email, ConstraintValidatorContext context) {
			return email
					.matches("^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*(\\.[A-Za-z]{2,})$");
		}
	}

}
