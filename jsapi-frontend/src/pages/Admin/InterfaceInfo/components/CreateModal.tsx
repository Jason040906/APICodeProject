import {
ProColumns,
  ProTable,

} from '@ant-design/pro-components';

import { Modal } from 'antd';
import React from 'react';

// export type FormValueType = {
//   target?: string;
//   template?: string;
//   type?: string;
//   time?: string;
//   frequency?: string;
// } & Partial<API.RuleListItem>;

export type Props = {
  columns: ProColumns<API.InterfaceInfo>[];
  onCancel: () => void;
  onSubmit: (values : API.InterfaceInfo) => Promise<void>;
  visible: boolean;

};

const CreateModal: React.FC<Props> = (props) => {

  const {visible, columns , onCancel,onSubmit} = props;
  return <Modal visible = {visible} footer={null} onCancel={() => onCancel?.()}>
      <ProTable type="form" columns={columns} onSubmit={async (value) => {
        onSubmit?.(value);
      }} />

    </Modal>

};

export default CreateModal;
