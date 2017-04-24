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
@Constraint(validatedBy = Name.NameImpl.class)

public @interface Name {

	String message() default "Empty field found";

	Class<?>[] groups() default {};

	Class<? extends Payload>[] payload() default {};

	class NameImpl implements ConstraintValidator<Name, String> {

		public void initialize(Name name) {

		}

		@Override
		public boolean isValid(String name, ConstraintValidatorContext context) {
			return name.matches("^[\\p{L} .'-]+$");
		}
	}

}
