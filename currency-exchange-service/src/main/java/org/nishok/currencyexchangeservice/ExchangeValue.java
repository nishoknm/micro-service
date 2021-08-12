package org.nishok.currencyexchangeservice;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.math.BigDecimal;

@Entity
@Table(name="exchange_value")
public class ExchangeValue
{
    @Id
    @Column(name="id")
    private Long id;

    @Column(name="currency_from")
    private String from;

    @Column(name="currency_to")
    private String to;

    @Column(name="conversion_multiple")
    private BigDecimal conversionMultiple;

    @Column(name="port")
    private int port;

    public ExchangeValue()
    {
    }
    //generating constructor using fields
    public ExchangeValue(Long id, String from, String to, BigDecimal conversionMultiple, int port) {
        super();
        this.id = id;
        this.from = from;
        this.to = to;
        this.conversionMultiple = conversionMultiple;
        this.port = port;
    }
    //generating getters
    public Long getId()
    {
        return id;
    }
    public String getFrom()
    {
        return from;
    }
    public String getTo()
    {
        return to;
    }
    public BigDecimal getConversionMultiple()
    {
        return conversionMultiple;
    }
    public int getPort()
    {
        return port;
    }
}