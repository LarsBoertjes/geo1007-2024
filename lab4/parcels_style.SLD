<StyledLayerDescriptor version="1.0.0"
  xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd"
  xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

  <NamedLayer>
    <Name>parcels</Name>
    <UserStyle>
      <Title>A polygon style based on area size</Title>
      <FeatureTypeStyle>
        <!-- smallest areas -->
        <Rule>
          <Name>Less than 5000</Name>
          <ogc:Filter>
            <ogc:PropertyIsLessThan>
              <ogc:PropertyName>oarea</ogc:PropertyName>
              <ogc:Literal>5000</ogc:Literal>
            </ogc:PropertyIsLessThan>
          </ogc:Filter>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#BF665E</CssParameter>
            </Fill>
            <Stroke>
              <CssParameter name="stroke">#000000</CssParameter>
              <CssParameter name="stroke-width">0.01</CssParameter>
            </Stroke>
          </PolygonSymbolizer>
        </Rule>

        <!-- 2nd smallest areas -->
        <Rule>
          <Name>5000-10000</Name>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>oarea</ogc:PropertyName>
                <ogc:Literal>5000</ogc:Literal> 
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThan>
                <ogc:PropertyName>oarea</ogc:PropertyName>
                <ogc:Literal>10000</ogc:Literal>
              </ogc:PropertyIsLessThan>
            </ogc:And>
          </ogc:Filter>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#F27457</CssParameter>
            </Fill>
            <Stroke>
              <CssParameter name="stroke">#000000</CssParameter>
              <CssParameter name="stroke-width">0.01</CssParameter>
            </Stroke>
          </PolygonSymbolizer>
        </Rule>

        <!-- medium areas -->
        <Rule>
          <Name>10000-20000</Name>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>oarea</ogc:PropertyName>
                <ogc:Literal>10000</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThan>
                <ogc:PropertyName>oarea</ogc:PropertyName>
                <ogc:Literal>20000</ogc:Literal> 
              </ogc:PropertyIsLessThan>
            </ogc:And>
          </ogc:Filter>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#04BF9D</CssParameter>
            </Fill>
            <Stroke>
              <CssParameter name="stroke">#000000</CssParameter>
              <CssParameter name="stroke-width">0.01</CssParameter>
            </Stroke>
          </PolygonSymbolizer>
        </Rule>

        <!-- large areas -->
        <Rule>
          <Name>20000-30000</Name>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>oarea</ogc:PropertyName>
                <ogc:Literal>20000</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThan>
                <ogc:PropertyName>oarea</ogc:PropertyName>
                <ogc:Literal>30000</ogc:Literal>
              </ogc:PropertyIsLessThan>
            </ogc:And>
          </ogc:Filter>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#03A696</CssParameter>
            </Fill>
            <Stroke>
              <CssParameter name="stroke">#000000</CssParameter>
              <CssParameter name="stroke-width">0.01</CssParameter>
            </Stroke>
          </PolygonSymbolizer>
        </Rule>

        <!-- largest areas -->
        <Rule>
          <Name>More than 30000</Name>
          <ogc:Filter>
            <ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyName>oarea</ogc:PropertyName>
              <ogc:Literal>30000</ogc:Literal> 
            </ogc:PropertyIsGreaterThanOrEqualTo>
          </ogc:Filter>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#253659</CssParameter>
            </Fill>
            <Stroke>
              <CssParameter name="stroke">#000000</CssParameter>
              <CssParameter name="stroke-width">0.01</CssParameter>
            </Stroke>
          </PolygonSymbolizer>
        </Rule>
        
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
