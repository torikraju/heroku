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
@Constraint(validatedBy = BDPhone.BDPhoneImpl.class)

public @interface BDPhone {

	String message() default "Empty field found";

	Class<?>[] groups() default {};

	Class<? extends Payload>[] payload() default {};

	class BDPhoneImpl implements ConstraintValidator<BDPhone, String> {

		public void initialize(BDPhone name) {

		}

		@Override
		public boolean isValid(String name, ConstraintValidatorContext context) {
			return name.matches("^(?:\\+88|01)?(?:\\d{11}|\\d{13})$");
		}
	}

}
