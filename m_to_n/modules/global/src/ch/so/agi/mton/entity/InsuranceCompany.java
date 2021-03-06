package ch.so.agi.mton.entity;

import com.haulmont.chile.core.annotations.Composition;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import java.util.List;

@NamePattern("%s|name")
@Table(name = "MTON_INSURANCE_COMPANY")
@Entity(name = "mton_InsuranceCompany")
public class InsuranceCompany extends StandardEntity {
    private static final long serialVersionUID = 8052486650762278802L;

    @Composition
    @OnDelete(DeletePolicy.CASCADE)
    @OneToMany(mappedBy = "insuranceCompany")
    protected List<InsuranceMembership> memberships;

    @NotNull
    @Column(name = "NAME", nullable = false)
    protected String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<InsuranceMembership> getMemberships() {
        return memberships;
    }

    public void setMemberships(List<InsuranceMembership> memberships) {
        this.memberships = memberships;
    }
}