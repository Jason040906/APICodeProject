import {
ProColumns,
  ProTable,

} from '@ant-design/pro-components';

import { Modal } from 'antd';
import React, { useEffect, useRef } from 'react';
import { ProFormInstance } from '@ant-design/pro-form/lib';

// export type FormValueType = {
//   target?: string;
//   template?: string;
//   type?: string;
//   time?: string;
//   frequency?: string;
// } & Partial<API.RuleListItem>;

export type Props = {
  values: API.InterfaceInfo;
  columns: ProColumns<API.InterfaceInfo>[];
  onCancel: () => void;
  onSubmit: (values : API.InterfaceInfo) => Promise<void>;
  visible: boolean;

};

const UpdateModal: React.FC<Props> = (props) => {

  const {values, visible, columns , onCancel, onSubmit} = props;

  const formRef = useRef<ProFormInstance>();

  useEffect(() => {
    if(formRef){
      formRef.current?.setFieldsValue(values);
    }
  }, [values])
  return (<Modal visible = {visible} footer={null} onCancel={() => onCancel?.()}>
      <ProTable type="form" formRef={formRef} columns={columns}  onSubmit={async (value) => {
        onSubmit?.(value);
      }} />

    </Modal>
  );
};

export default UpdateModal;
