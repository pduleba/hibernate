package com.pduleba.hibernate.model;

import java.util.Collection;
import java.util.LinkedHashSet;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import lombok.Data;

@Entity
@Table(name = "T_USERS",uniqueConstraints = {
		@UniqueConstraint(columnNames = "ID")}
)
@SequenceGenerator(name = "users-sequence-generator", sequenceName = "USERS_SEQ", initialValue = 1, allocationSize = 1)
public @Data class UserModel {

	@Id
	@Column(name = "id")
	@GeneratedValue(generator = "users-sequence-generator", strategy = GenerationType.SEQUENCE)
	private Long id;
	
	@Column(name = "name")
	private String name;

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy="user")
	private Collection<OrderModel> orders = new LinkedHashSet<>();

}
